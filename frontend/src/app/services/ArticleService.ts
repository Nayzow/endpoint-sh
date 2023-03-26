import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Article } from '../models/Article';
import {Observable} from "rxjs";
import {Command} from "../models/Command";
import {environment} from "../../environments/environment";

@Injectable({
  providedIn: 'root',
})
export class ArticleService {
  constructor(private http: HttpClient) {}

  getAll(technologyName: string | null = null): Observable<Article[]> {
    let url = environment.apiUrl + '/articles';
    if(technologyName) {
      url += '?technologyName=' + encodeURI(technologyName);
    }
    return this.http.get<Article[]>(url);
  }

  getById(id: number): Observable<Article> {
    return this.http.get<Article>(`http://localhost:8080/articles/${id}`);
  }
}
