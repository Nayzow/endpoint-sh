import { Component, OnInit } from '@angular/core';
import { Article } from '../../models/Article';
import { ArticleService } from '../../services/ArticleService';
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: 'app-articles',
  templateUrl: './articles.component.html',
  styleUrls: ['./articles.component.css']
})
export class ArticlesComponent implements OnInit {
  technology: string | null = null;
  articles: Article[] = [];

  constructor(private articleService: ArticleService, private route: ActivatedRoute) {}

  async ngOnInit() {
    await this.route.paramMap
      .subscribe(params => this.technology = params.get('technology'))

    await this.articleService
      .getAll(!this.technology ? '' : this.technology)
      .subscribe(articles => this.articles = articles);
  }
}
