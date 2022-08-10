<template>
  <div class="key-code">
    <div class="key-code__title">{{ eventKey?.keyCode }}</div>

    <div v-if="eventKey" class="key-code__info">
      <AppCard>
        <template #header> event.key </template>
        <div>
          {{ eventKey.key }}
        </div>
      </AppCard>

      <AppCard>
        <template #header> event.location </template>
        <div>
          <span v-if="eventKey.location === 1">Левый</span>
          <span v-else-if="eventKey.location === 2">Правый</span>
          <span v-else>Единственный</span>
        </div>
      </AppCard>

      <AppCard>
        <template #header> event.code </template>
        <div>
          {{ eventKey.code }}
        </div>
      </AppCard>

      <AppCard>
        <template #header> Event Damp </template>
        <pre class="pre">
          {
            "key": {{ eventKey.key }},
            "keyCode": {{ eventKey.keyCode }},
            "which": {{ eventKey.which }},
            "code": {{ eventKey.code }},
            "location": {{ eventKey.location }},
            "altKey": {{ eventKey.altKey }},
            "ctrlKey": {{ eventKey.ctrlKey }},
            "metaKey": {{ eventKey.metaKey }},
            "shiftKey": {{ eventKey.shiftKey }},
            "repeat": {{ eventKey.repeat }}
          }
        </pre>
      </AppCard>
    </div>
  </div>
</template>

<script>
import AppCard from '@/components/atoms/AppCard'

export default {
  name: 'KeyCode',

  components: {
    AppCard
  },

  data() {
    return {
      eventKey: null
    }
  },

  created() {
    document.addEventListener('keydown', this.keyPress)
  },

  unmounted() {
    document.removeEventListener('keydown', this.keyPress)
  },

  methods: {
    keyPress(event) {
      event.preventDefault()
      this.eventKey = event
    }
  }
}
</script>

<style lang="scss" scoped>
.key-code {
  &__title {
    font-size: 148px;
    font-weight: 500;
    text-align: center;
    margin-bottom: 64px;
  }

  &__info {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 18px;
    padding: 20px;

    .pre {
      font-size: 12px;
      text-align: start;
      margin-right: 40px;
    }
  }
}
</style>
