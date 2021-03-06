//
//  TheMovieDBService.swift
//  Mobile2YouChallenge
//
//  Created by DevLuis on 29/03/21.
//

import Alamofire
import AlamofireObjectMapper

class TheMovieDBService {
    static let shared = TheMovieDBService()
    
    //MARK: - Get Now Playing
    func fetchNowPlaying(page: Int, onComplete: @escaping (MoviesModel?) -> Void) {
        let url: String
        url = "\(API_BASE)\(NOW_PLAYING)api_key=\(API_KEY)&page=\(page)"
        print("DEBUG: url...: \(url)")
        
        Alamofire.request(url).responseObject { (response: DataResponse<MoviesModel>) in
            onComplete(response.result.value)
        }
    }
    
    //MARK: - Get Popular
    func fetchPopular(page: Int, onComplete: @escaping (MoviesModel?) -> Void) {
        let url: String
        url = "\(API_BASE)\(POPULAR)api_key=\(API_KEY)&page=\(page)"
        print("DEBUG: url...: \(url)")
        
        Alamofire.request(url).responseObject { (response: DataResponse<MoviesModel>) in
            onComplete(response.result.value)
        }
    }
    
    //MARK: - Get Top Rated
    func fetchTopRated(page: Int, onComplete: @escaping (MoviesModel?) -> Void) {
        let url: String
        url = "\(API_BASE)\(TOP_RATED)api_key=\(API_KEY)&page=\(page)"
        print("DEBUG: url...: \(url)")
        
        Alamofire.request(url).responseObject { (response: DataResponse<MoviesModel>) in
            onComplete(response.result.value)
        }
    }
    
    //MARK: - Get Search
    func fetchSearch(title: String?, page: Int, onComplete: @escaping (MoviesModel?) -> Void) {
        let query: String
        let url: String
        
        if let name = title, !name.isEmpty {
            query = "query=\(name.replacingOccurrences(of: " ", with: ""))&"
            url = "\(API_BASE)\(SEARCH)api_key=\(API_KEY)&\(query)page=\(page)"
        } else {
            url = "\(API_BASE)\(NOW_PLAYING)api_key=\(API_KEY)&page=\(page)"
        }
        
        Alamofire.request(url).responseObject { (response: DataResponse<MoviesModel>) in
            onComplete(response.result.value)
    }
}
    
    //MARK: - Get Details
    func fetchMovieDetails(movie_id: Int, onComplete: @escaping (MovieDetailsModel?) -> Void) {
        let url: String
        url = "\(API_BASE)\(MOVIE)\(movie_id)?api_key=\(API_KEY)"
        print("DEBUG: url...:\(url)")
        
        Alamofire.request(url).responseObject { (response: DataResponse<MovieDetailsModel>) in
            onComplete(response.result.value)
        }
    }
    
    //MARK: - Get Similar Movies
    func fetchSimilarMovies(movie_id: Int, page: Int, onComplete: @escaping (SimilarModel?) -> Void) {
        let url: String
        url = "\(API_BASE)\(MOVIE)\(movie_id)\(SIMILAR)api_key=\(API_KEY)&page=\(page)"
        print("DEBUG: url Similar...:\(url)")
        
        Alamofire.request(url).responseObject { (response: DataResponse<SimilarModel>) in
            onComplete(response.result.value)
        }
    }
    
}


