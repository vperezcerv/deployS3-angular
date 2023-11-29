import { Component, OnInit } from '@angular/core';
import { DataService } from './data.service';

@Component({
  selector: 'app-root',
  template: `
    <div>
      <h1>Mensaje desde el Backend:</h1>
      <p>{{ message }}</p>
    </div>
  `,
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'hola-mundo';
  message: string='';

  constructor(private dataService: DataService) {}

  ngOnInit() {
    this.dataService.getMessage().subscribe((result) => {
      this.message = result;
    });
  }
}
