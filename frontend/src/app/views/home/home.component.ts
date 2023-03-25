import {Component, OnInit} from '@angular/core';
import {TechnologyService} from "../../services/TechnologyService";
import {Technology} from "../../models/Technology";
import {animate, query, stagger, state, style, transition, trigger} from "@angular/animations";
import {timer} from "rxjs";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  animations: [
    trigger('textAnimation', [
      state('hidden', style({
        opacity: 0,
        transform: 'translateY(-100%)'
      })),
      state('visible', style({
        opacity: 1,
        transform: 'translateY(0)'
      })),
      transition('hidden => visible', animate('600ms ease-in'))
    ]),
    trigger('logoAnimation', [
      state('hidden', style({
        opacity: 0,
        transform: 'translateX(-100%)'
      })),
      state('visible', style({
        opacity: 1,
        transform: 'translateX(0)'
      })),
      transition('hidden => visible', animate('600ms ease-in'))
    ]),
  ]
})

export class HomeComponent implements OnInit {
  technologiesWithArticles: Technology[] = [];
  technologiesWithCommands: Technology[] = [];
  textState = 'hidden';
  logoState = 'hidden';

  constructor(private technologyService: TechnologyService) {
  }

  showText() {
    this.textState = 'visible';
  }

  showLogo() {
    this.logoState = 'visible';
  }

  ngOnInit() {
    this.technologyService.getAll(null, true).subscribe(technologies => this.technologiesWithArticles = technologies);
    this.technologyService.getAll(true, null).subscribe(technologies => this.technologiesWithCommands = technologies);
    timer(200)
      .subscribe(() => {
        this.showText();
        this.showLogo();
      });
  }
}
