import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Technology } from '../models/Technology';
import { Observable } from "rxjs";
import {environment} from "../../environments/environment";

@Injectable({
  providedIn: 'root',
})
export class TechnologyService {
  constructor(private http: HttpClient) {}

  getAll(hasCommands: boolean | null = null, hasArticles: boolean | null = null): Observable<Technology[]> {
    let url = environment.apiUrl + '/technologies';
    let alreadyHaveParams = false;
    if(hasCommands !== null) {
      url += alreadyHaveParams ? '&' : '?' + 'hasCommands=' + hasCommands;
      alreadyHaveParams = true;
    }
    if(hasArticles !== null) {
      url += alreadyHaveParams ? '&' : '?' + 'hasArticles=' + hasArticles;
      alreadyHaveParams = true;
    }
    return this.http.get<Technology[]>(url);
  }
}
