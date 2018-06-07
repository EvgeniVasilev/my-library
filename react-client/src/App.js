import React, {Component} from  'react';
import axios from 'axios';
import Moment from 'react-moment';
import NumberFormat from 'react-number-format';

class App extends Component {

    constructor(props) {
        super(props);
        this.state = {
            list: []
        };
    }

    deleteItem(id) {
        axios.post('http://localhost/my-library/server/server.php?id=' + id).then(res => {
            this.setState({
                list: res.data
            });
        }).catch(function (error) {
            if (error.response) {
                console.log(error.response.data);
                console.log(error.response.status);
                console.log(error.response.headers);
            }
        });
    }

    componentDidMount() {
        axios.get('http://localhost/my-library/server/server.php').then(res=> {
            this.setState({
                list: res.data
            });
        }).catch(function (error) {
            if (error.response) {
                console.log(error.response.data);
                console.log(error.response.status);
                console.log(error.response.headers);
            }
        });
    }

    render() {
        return (
            <div className="container-fluid">
                <div className="page-header">
                    <h1>
                        My Library
                    </h1>
                </div>
                <div className="row">
                    <div className="col-lg-12">
                        {
                            this.state.list.map(item =>
                                <div key={item.id} className="col-lg-4">
                                    <div className="panel panel-default">
                                        <div className="panel-heading">
                                            <p>
                                                <b>
                                                    {item.name}
                                                </b>
                                            </p>
                                        </div>
                                        <div className="panel-body">
                                            <p>
                                                <b>
                                                    Author's Name: &nbsp;
                                                </b>
                                                {item.author}
                                            </p>
                                            <p>
                                                <b>
                                                    Date Issued: &nbsp;
                                                </b>
                                                <Moment format="YYYY:MM:DD HH:mm">
                                                    {item.issued}
                                                </Moment>
                                            </p>
                                            <NumberFormat value={item.pages} displayType={'text'}
                                                          format="#,###.###"
                                                          renderText={value => <p><b>Pages: </b>{value}</p>}/>

                                            <button className="btn btn-danger" onClick={() => this.deleteItem(item.id)}>
                                                Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            )
                        }
                    </div>
                </div>
            </div>
        );
    }
}

export default App;
