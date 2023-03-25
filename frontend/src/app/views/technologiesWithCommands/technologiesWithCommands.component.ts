import {Component, OnInit} from '@angular/core';
import {TechnologyService} from "../../services/TechnologyService";
import {Technology} from "../../models/Technology";
import {animate, query, stagger, state, style, transition, trigger} from "@angular/animations";
import {timer} from "rxjs";

@Component({
  selector: 'app-technologiesWithCommands',
  templateUrl: './technologiesWithCommands.component.html',
  styleUrls: ['./technologiesWithCommands.component.css'],
})

export class TechnologiesWithCommandsComponent implements OnInit {
  technologiesWithCommands: Technology[] = [];

  constructor(private technologyService: TechnologyService) {
  }

  ngOnInit() {
    this.technologyService.getAll(true, null).subscribe(technologies => this.technologiesWithCommands = technologies);
  }
}
