import * as React from 'react'

class App extends React.Component<any, any> {
  render() {
    return <div>
            {
              [1,2,3].map((elem) => {
                return <div key={elem}>{elem}</div>
              })
            }
          </div>
  }
}

export default App
