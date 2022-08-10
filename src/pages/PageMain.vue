<template>
  <main class="main">
    <h1 class="main__title">
      Нажмите любую клавишу, чтобы получить информацию о коде ключа события
      JavaScript.
    </h1>
    <KeyCode />
  </main>
</template>

<script>
import KeyCode from '@/components/molecules/KeyCode.vue'

export default {
  name: 'PageMain',

  components: {
    KeyCode
  },

  data() {
    return {
      isVisibleAlert: true
    }
  }
}
</script>

<style lang="scss" scoped>
.main {
  &__title {
    padding: 32px 64px;
    margin: 40px;
    margin-bottom: 80px;
    color: $color-text-basic;
    font-size: 28px;
    text-align: center;
    background-color: $color-background-primary;
    border-radius: 96px;
    text-decoration: underline;
    text-decoration-color: #ffc600;

    @media (max-width: 575px) {
      font-size: 16px;
      padding: 16px 32px;
    }
  }
}
</style>
