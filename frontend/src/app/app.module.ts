import {NgModule} from '@angular/core';
import {AppComponent} from './app.component';
import {ArticlesComponent} from './views/articles/articles.component';
import {TechnologiesComponent} from './views/technologies/technologies.component';
import {TechnologiesWithCommandsComponent} from './views/technologiesWithCommands/technologiesWithCommands.component';
import {TechnologiesWithArticlesComponent} from './views/technologiesWithArticles/technologiesWithArticles.component';
import {CommandsComponent} from './views/commands/commands.component';
import {RouterOutlet} from '@angular/router';
import {AppRoutingModule} from "./app.routing.module";
import {HttpClientModule} from "@angular/common/http";
import {HomeComponent} from "./views/home/home.component";
import {NavbarComponent} from "./components/navbar/navbar.component";
import {FooterComponent} from "./components/footer/footer.component";
// import {LoadingComponent} from "./components/loading/loading.component";
import {BrowserModule} from '@angular/platform-browser';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

@NgModule({
  declarations: [
    AppComponent,
    ArticlesComponent,
    TechnologiesComponent,
    TechnologiesWithArticlesComponent,
    TechnologiesWithCommandsComponent,
    CommandsComponent,
    NavbarComponent,
    FooterComponent,
    HomeComponent,
    // LoadingComponent,
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    RouterOutlet,
    AppRoutingModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
