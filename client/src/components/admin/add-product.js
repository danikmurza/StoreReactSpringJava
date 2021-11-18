import React, {Component} from 'react'
import {connect} from 'react-redux'
import {filters} from '../../actions'
import Spinner from "../spinner";
import ErrorIndicator from "../error-indicator";


class AddProduct extends Component {
  
  state = {
    brand: "",
    counts: 0,
    img: "",
    name: "",
    prices: 0,
    specification: "",
    type: ""
  }
  
  componentDidMount() {
  
  }
  
  onSubmits = (e) => {
    const {name, brand, specification, prices, counts, img, type} = this.state
    e.preventDefault()
    const url = "add_product"
    let price = Number(prices)
    let count = Number(counts)
    const body ={name, brand, specification, price, count, img, type, url}
    this.props.dispatch(filters.product(body))
    this.setState({name: '', brand: '', specification: '', price: 0, count: 0, img: '', type: ''})
  }
  
  render() {
    
    const {products, pending, error} = this.props
    
    if (pending) {
      return <Spinner/>
    }
    
    if (error) {
      return <ErrorIndicator/>
    }
  
    if (products.message) {
      console.log(products.message)
    }
    return (
      <div className="container pb-4">
        <div className="form-group">
          <label htmlFor="text-input">TYPE PRODUCT</label>
          <select value={this.state.type}
                  onChange={(e) => this.setState({type: e.target.value})}
          >
            <option value="">Выбери продукт</option>
            <option value="processor">Processor</option>
            <option value="motherboard">Motherboard</option>
            <option value="memory">Memory</option>
            <option value="video-card">Video Card</option>
            <option value="ssd">SSD</option>
            <option value="cooling">Cooling</option>
            <option value="SoundCard">Sound Card</option>
          </select>
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Name product</label>
          <input
            className="form-control"
            type="text"
            id="name"
            onChange={(e) => this.setState({name: e.target.value})}
            value={this.state.nameProduct}
          />
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Brand </label>
          <input
            className="form-control"
            type="text"
            id="brand"
            onChange={(e) => this.setState({brand: e.target.value})}
            value={this.state.brand}
          />
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Count</label>
          <input
            className="form-control"
            type="number"
            id="count"
            onChange={(e) => this.setState({counts: e.target.value})}
            value={this.state.count}
          />
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Price</label>
          <input
            className="form-control"
            type="number"
            id="price"
            onChange={(e) => this.setState({prices: e.target.value})}
            value={this.state.price}
          />
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Image URL</label>
          <input
            className="form-control"
            type="text"
            id="link"
            onChange={(e) => this.setState({img: e.target.value})}
            value={this.state.img}
          />
        </div>
        <div className="form-group">
          <label htmlFor="text-input">Description</label>
          <input
            className="form-control"
            type="text"
            id="specification"
            onChange={(e) => this.setState({specification: e.target.value})}
            value={this.state.specification}
          />
        </div>
        <div className="text-right">
          <button className="btn btn-primary" type="submit"
                  onClick={this.onSubmits}>
            <i className="czi-user mr-2 ml-n1"/>
            ADD
          </button>
        </div>
      </div>
    )
  }
}


const mapStateToProps = ({productList: {products, pending, error}}) => {
  return {products, pending, error}
}


export default connect(mapStateToProps, null)(AddProduct)
