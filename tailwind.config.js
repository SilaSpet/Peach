module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        'primary': 'var(--color-primary)',
        'primary-dark': 'var(--color-primary-dark)',
        'secondary': 'var(--color-secondary)',
        'dark-gray': 'var(--color-dark-gray)',
        'medium-gray': 'var(--color-medium-gray)',
        'light-gray': 'var(--color-light-gray)',
        'almost-black': 'var(--color-almost-black)',
        'almost-white': 'var(--color-almost-white)',
        'ink': 'var(--color-ink)',
        'ink-light': 'var(--color-ink-light)',
        'background': 'var(--color-background)',
        'elevated-background': 'var(--color-elevated-background)',
      },
      fontSize: {
        'xx-large': '2.75rem',
      },
      spacing: {
        '72': '18rem',
        '80': '20rem',
        '88': '22rem',
      },
      borderRadius: {
        'xl': '1em',
        'sheet': '1.5em',
      },
      boxShadow: {
        'sheet': '0 0 3rem rgba(226, 221, 215, 0.5)',
      },
    },
    fontSize: {
      xs: '0.75rem',
      sm: '0.875rem',
      base: '1rem',
      lg: '1.125rem',
      xl: '1.25rem',
      '2xl': '1.5rem',
      '3xl': '1.875rem',
      '4xl': '2.25rem',
      '5xl': '3rem',
      '6xl': '4rem',
    },
  },
  variants: {},
}
