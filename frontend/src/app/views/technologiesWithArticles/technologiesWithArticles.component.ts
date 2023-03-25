import {Component, OnInit} from '@angular/core';
import {TechnologyService} from "../../services/TechnologyService";
import {Technology} from "../../models/Technology";
import {animate, query, stagger, state, style, transition, trigger} from "@angular/animations";
import {timer} from "rxjs";

@Component({
  selector: 'app-technologiesWithArticles',
  templateUrl: './technologiesWithArticles.component.html',
  styleUrls: ['./technologiesWithArticles.component.css'],
})

export class TechnologiesWithArticlesComponent implements OnInit {
  technologiesWithArticles: Technology[] = [];

  constructor(private technologyService: TechnologyService) {
  }

  ngOnInit() {
    this.technologyService.getAll(true, null).subscribe(technologies => this.technologiesWithArticles = technologies);
  }
}
