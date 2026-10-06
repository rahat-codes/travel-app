import '../models/destination.dart';
import '../models/tour.dart';

const List<Destination> destinations = [
  Destination(
    name: 'Portugal',
    country: 'Europe',
    image:
    'https://images.unsplash.com/photo-1555881400-74d7acaacd8b?auto=format&fit=crop&w=900&q=80',
    description:
    'Discover beautiful coastlines, historic cities and unforgettable experiences across Portugal.',
  ),

  Destination(
    name: 'Tenerife',
    country: 'Spain',
    image:
    'https://images.unsplash.com/photo-1502301103665-0b95cc738daf?auto=format&fit=crop&w=900&q=80',
    description:
    'Explore volcanic landscapes, beaches and spectacular mountain views.',
  ),

  Destination(
    name: 'Iceland',
    country: 'Europe',
    image:
    'https://images.unsplash.com/photo-1504829857797-ddff29c27927?auto=format&fit=crop&w=900&q=80',
    description:
    'Experience dramatic landscapes, waterfalls, glaciers and incredible nature.',
  ),
];

const List<Tour> tours = [
  Tour(
    title: 'Teide National Park',
    location: 'Tenerife, Spain',
    image:
    'https://images.unsplash.com/photo-1518709594023-6eab9bab7b23?auto=format&fit=crop&w=900&q=80',
    description:
    'Explore the spectacular volcanic landscape of Teide National Park with panoramic mountain views.',
    duration: '4–6 hours',
    season: 'Year-round',
    difficulty: 'Easy',
  ),

  Tour(
    title: 'Portugal Coast Adventure',
    location: 'Portugal',
    image:
    'https://images.unsplash.com/photo-1555881400-74d7acaacd8b?auto=format&fit=crop&w=900&q=80',
    description:
    'Enjoy dramatic coastal scenery, beautiful beaches and traditional Portuguese villages.',
    duration: '5 hours',
    season: 'Spring–Autumn',
    difficulty: 'Easy',
  ),

  Tour(
    title: 'Mountain Escape',
    location: 'Iceland',
    image:
    'https://images.unsplash.com/photo-1520769945061-0a448c463865?auto=format&fit=crop&w=900&q=80',
    description:
    'A peaceful journey through some of Iceland’s most beautiful natural landscapes.',
    duration: '6 hours',
    season: 'Summer',
    difficulty: 'Medium',
  ),
];