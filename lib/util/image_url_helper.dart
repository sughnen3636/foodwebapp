class ImageUrlHelper {
  /// Transforms old storage URLs to use the new CORS-enabled image route
  static String transformImageUrl(String? imageUrl) {
    if (imageUrl == null || imageUrl.isEmpty) {
      return '';
    }
    
    // Check if it's already using the new format
    if (imageUrl.contains('/image/')) {
      return imageUrl;
    }
    
    // Transform old storage URLs to new route format
    if (imageUrl.contains('/storage/app/public/')) {
      return imageUrl.replaceAll('/storage/app/public/', '/image/');
    }
    
    // Return original URL if no transformation needed
    return imageUrl;
  }
  
  /// Transforms a list of image URLs
  static List<String> transformImageUrls(List<String>? imageUrls) {
    if (imageUrls == null) return [];
    return imageUrls.map((url) => transformImageUrl(url)).toList();
  }
}
