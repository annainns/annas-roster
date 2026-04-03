/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: {
    domains: ['images.squarespace-cdn.com', 'cdn.prod.website-files.com', 'cdn.sanity.io', 'mir-s3-cdn-cf.behance.net', 'c4.behance.net'],
    unoptimized: true,
  },
}

module.exports = nextConfig
