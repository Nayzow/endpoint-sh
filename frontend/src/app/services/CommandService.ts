import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Command } from '../models/Command';
import {Observable} from "rxjs";
import {Category} from "../models/Category";
import {environment} from "../../environments/environment";

@Injectable({
  providedIn: 'root',
})
export class CommandService {
  constructor(private http: HttpClient) {}

  getAll(technologyName: string | null = null): Observable<Command[]> {
    let url = environment.apiUrl + '/commands';
    if(technologyName) {
      url += '?technologyName=' + encodeURI(technologyName);
    }
    return this.http.get<Command[]>(url);
  }
}
