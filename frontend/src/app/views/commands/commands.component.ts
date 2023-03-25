import { Component, OnInit } from '@angular/core';
import { Command } from '../../models/Command';
import { CommandService } from '../../services/CommandService';
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: 'app-commands',
  templateUrl: './commands.component.html',
  styleUrls: ['./commands.component.css']
})
export class CommandsComponent implements OnInit {

  technology: string | null = null;
  commands: Command[] = [];

  constructor(private commandService: CommandService, private route: ActivatedRoute) {}

  async ngOnInit() {
    await this.route.paramMap
      .subscribe(params => this.technology = params.get('technology'));

    await this.commandService
      .getAll(!this.technology ? '' : this.technology)
      .subscribe(commands => this.commands = commands);
  }
}
