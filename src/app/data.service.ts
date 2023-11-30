import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class DataService {

  private apiUrl = 'http://44.192.100.254/api/data';  // Reemplaza con la URL de tu backend

  constructor(private http: HttpClient) {}

  getMessage(): Observable<string> {
    return this.http.get(this.apiUrl, { responseType: 'text' });
  }
}