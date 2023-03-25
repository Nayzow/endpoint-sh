import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from "./views/home/home.component";
import { ArticlesComponent } from "./views/articles/articles.component";
import { CommandsComponent } from "./views/commands/commands.component";
import { TechnologiesComponent } from "./views/technologies/technologies.component";
import {TechnologiesWithCommandsComponent} from "./views/technologiesWithCommands/technologiesWithCommands.component";
import {TechnologiesWithArticlesComponent} from "./views/technologiesWithArticles/technologiesWithArticles.component";

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'articles', component: TechnologiesWithArticlesComponent },
  { path: 'articles/:technology', component: ArticlesComponent },
  { path: 'commands', component: TechnologiesWithCommandsComponent },
  { path: 'commands/:technology', component: CommandsComponent },
  { path: '**', component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
