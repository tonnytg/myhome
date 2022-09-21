import './App.css';
import TableHead from './components/TableHead';
import TableBody from './components/TableBody';
import TableFoot from './components/TableFoot';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <p>
          <h3>Hello</h3>
        </p>
        <TableHead />
        <TableBody />
        <TableFoot />
      </header>
      

    </div>
  );
}

export default App;
