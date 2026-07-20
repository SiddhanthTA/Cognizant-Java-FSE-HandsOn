import "./App.css";
import office from "./office.jpg";

function App() {

  const offices = [
    {
      name: "DBS",
      rent: 50000,
      address: "Chennai"
    },
    {
      name: "Regus",
      rent: 70000,
      address: "Bangalore"
    },
    {
      name: "WeWork",
      rent: 55000,
      address: "Hyderabad"
    }
  ];

  return (

      <div className="container">

        <h1>Office Space, at Affordable Range</h1>

        <img src={office} alt="Office"/>

        {

          offices.map((item,index)=>(

              <div key={index}>

                <h2>Name : {item.name}</h2>

                <h3
                    className={
                      item.rent <= 60000
                          ?
                          "textRed"
                          :
                          "textGreen"
                    }
                >
                  Rent : Rs. {item.rent}
                </h3>

                <h3>Address : {item.address}</h3>

              </div>

          ))

        }

      </div>

  );

}

export default App;