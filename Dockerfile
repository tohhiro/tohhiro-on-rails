FROM ruby:3.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    npm \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Install yarn
RUN npm install -g yarn

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
