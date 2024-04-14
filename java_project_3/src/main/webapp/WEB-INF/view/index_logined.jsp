<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Grocery Mart</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="76x76" href="./assets/favicon/apple-touch-icon.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon/favicon-16x16.png" />
        <link rel="manifest" href="./assets/favicon/site.webmanifest" />
        <meta name="msapplication-TileColor" content="#da532c" />
        <meta name="theme-color" content="#ffffff" />

        <!-- Fonts -->
        <link rel="stylesheet" href="./assets/fonts/stylesheet.css" />

        <!-- Styles -->
        <link rel="stylesheet" href="./assets/css/main.css" />

        <!-- Scripts -->
        <script src="./assets/js/scripts.js"></script>
    </head>
    <body>
        <!-- Header -->
          <jsp:include page="templates/header_logined.jsp"></jsp:include>

        <!-- MAIN -->
        <main class="container home">
            <!-- Slideshow -->
            <div class="home__container">
                <div class="slideshow">
                    <div class="slideshow__inner">
                        <div class="slideshow__item">
                            <a href="#!" class="slideshow__link">
                                <picture>
                                    <source
                                        media="(max-width: 767.98px)"
                                        srcset="./assets/img/slideshow/item-1-md.png"
                                    />
                                    <img src="./assets/img/slideshow/item-1.png" alt="" class="slideshow__img" />
                                </picture>
                            </a>
                        </div>
                    </div>

                    <div class="slideshow__page">
                        <span class="slideshow__num">1</span>
                        <span class="slideshow__slider"></span>
                        <span class="slideshow__num">5</span>
                    </div>
                </div>
            </div>

            <!-- Browse Categories -->
            <section class="home__container">
                <div class="home__row">
                    <h2 class="home__heading">Browse Categories</h2>
                </div>
                <div class="home__cate row row-cols-3 row-cols-md-1">
                    <!-- Category item 1 -->
                    <div class="col">
                        <a href="#!">
                            <article class="cate-item">
                                <img src="./assets/img/category-item/item-1.png" alt="" class="cate-item__thumb" />
                                <div class="cate-item__info">
                                    <h3 class="cate-item__title">$24 - $150</h3>
                                    <p class="cate-item__desc">New sumatra mandeling coffe blend</p>
                                </div>
                            </article>
                        </a>
                    </div>

                    <!-- Category item 2 -->
                    <div class="col">
                        <a href="#!">
                            <article class="cate-item">
                                <img src="./assets/img/category-item/item-2.png" alt="" class="cate-item__thumb" />
                                <div class="cate-item__info">
                                    <h3 class="cate-item__title">$37 - $160</h3>
                                    <p class="cate-item__desc">Espresso arabica and robusta beans</p>
                                </div>
                            </article>
                        </a>
                    </div>

                    <!-- Category item 3 -->
                    <div class="col">
                        <a href="#!">
                            <article class="cate-item">
                                <img src="./assets/img/category-item/item-3.png" alt="" class="cate-item__thumb" />
                                <div class="cate-item__info">
                                    <h3 class="cate-item__title">$32 - $160</h3>
                                    <p class="cate-item__desc">Lavazza top class whole bean coffee blend</p>
                                </div>
                            </article>
                        </a>
                    </div>
                </div>
            </section>

            <!-- Browse Products -->
            <section class="home__container">
                <div class="home__row">
                    <h2 class="home__heading">Total LavAzza 1320</h2>
                    <div class="filter-wrap">
                        <button class="filter-btn js-toggle" toggle-target="#home-filter">
                            Filter
                            <img src="./assets/icons/filter.svg" alt="" class="filter-btn__icon icon" />
                        </button>

                        <div id="home-filter" class="filter hide">
                            <img src="./assets/icons/arrow-up.png" alt="" class="filter__arrow" />
                            <h3 class="filter__heading">Filter</h3>
                            <form action="" class="filter__form form">
                                <div class="filter__row filter__content">
                                    <!-- Filter column 1 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Price</label>
                                        <div class="filter__form-group">
                                            <div
                                                class="filter__form-slider"
                                                style="--min-value: 10%; --max-value: 60%"
                                            ></div>
                                        </div>
                                        <div class="filter__form-group filter__form-group--inline">
                                            <div>
                                                <label for="" class="form__label form__label--small"> Minimum </label>
                                                <div class="filter__form-text-input filter__form-text-input--small">
                                                    <input
                                                        type="text"
                                                        name=""
                                                        id=""
                                                        class="filter__form-input"
                                                        value="$30.00"
                                                    />
                                                </div>
                                            </div>
                                            <div>
                                                <label for="" class="form__label form__label--small"> Maximum </label>
                                                <div class="filter__form-text-input filter__form-text-input--small">
                                                    <input
                                                        type="text"
                                                        name=""
                                                        id=""
                                                        class="filter__form-input"
                                                        value="$100.00"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter__separate"></div>

                                    <!-- Filter column 2 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Size/Weight</label>
                                        <div class="filter__form-group">
                                            <div class="form__select-wrap">
                                                <div class="form__select" style="--width: 158px">
                                                    500g
                                                    <img
                                                        src="./assets/icons/select-arrow.svg"
                                                        alt=""
                                                        class="form__select-arrow icon"
                                                    />
                                                </div>
                                                <div class="form__select">
                                                    Gram
                                                    <img
                                                        src="./assets/icons/select-arrow.svg"
                                                        alt=""
                                                        class="form__select-arrow icon"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="filter__form-group">
                                            <div class="form__tags">
                                                <button class="form__tag">Small</button>
                                                <button class="form__tag">Medium</button>
                                                <button class="form__tag">Large</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter__separate"></div>

                                    <!-- Filter column 3 -->
                                    <div class="filter__col">
                                        <label for="" class="form__label">Brand</label>
                                        <div class="filter__form-group">
                                            <div class="filter__form-text-input">
                                                <input
                                                    type="text"
                                                    name=""
                                                    id=""
                                                    placeholder="Search brand name"
                                                    class="filter__form-input"
                                                />
                                                <img
                                                    src="./assets/icons/search.svg"
                                                    alt=""
                                                    class="filter__form-input-icon icon"
                                                />
                                            </div>
                                        </div>
                                        <div class="filter__form-group">
                                            <div class="form__tags">
                                                <button class="form__tag">Lavazza</button>
                                                <button class="form__tag">Nescafe</button>
                                                <button class="form__tag">Starbucks</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter__row filter__footer">
                                    <button class="btn btn--text filter__cancel js-toggle" toggle-target="#home-filter">
                                        Cancel
                                    </button>
                                    <button
                                        class="btn btn--primary filter__submit js-toggle"
                                        toggle-target="#home-filter"
                                    >
                                        Show Result
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="row row-cols-5 row-cols-lg-2 row-cols-sm-1 g-3">
                    <!-- Product card 1 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-1.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Coffee Beans - Espresso Arabica and Robusta Beans</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$47.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">4.3</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 2 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-2.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Lavazza Coffee Blends - Try the Italian Espresso</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$53.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">3.4</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 3 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-3.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn like-btn--liked product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Lavazza - Caffè Espresso Black Tin - Ground coffee</a>
                            </h3>
                            <p class="product-card__brand">Welikecoffee</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$99.99</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">5.0</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 4 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-4.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Qualità Oro Mountain Grown - Espresso Coffee Beans</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$38.65</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">4.4</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 5 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-1.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Coffee Beans - Espresso Arabica and Robusta Beans</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$47.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">4.3</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 6 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-2.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Lavazza Coffee Blends - Try the Italian Espresso</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$53.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">3.4</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 7 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-3.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn like-btn--liked product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Lavazza - Caffè Espresso Black Tin - Ground coffee</a>
                            </h3>
                            <p class="product-card__brand">Welikecoffee</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$99.99</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">5.0</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 8 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-4.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Qualità Oro Mountain Grown - Espresso Coffee Beans</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$38.65</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">4.4</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 9 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-1.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Coffee Beans - Espresso Arabica and Robusta Beans</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$47.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">4.3</span>
                            </div>
                        </article>
                    </div>

                    <!-- Product card 10 -->
                    <div class="col">
                        <article class="product-card">
                            <div class="product-card__img-wrap">
                                <a href="productdetail">
                                    <img src="./assets/img/product/item-2.png" alt="" class="product-card__thumb" />
                                </a>
                                <button class="like-btn product-card__like-btn">
                                    <img src="./assets/icons/heart.svg" alt="" class="like-btn__icon icon" />
                                    <img src="./assets/icons/heart-red.svg" alt="" class="like-btn__icon--liked" />
                                </button>
                            </div>
                            <h3 class="product-card__title">
                                <a href="productdetail">Lavazza Coffee Blends - Try the Italian Espresso</a>
                            </h3>
                            <p class="product-card__brand">Lavazza</p>
                            <div class="product-card__row">
                                <span class="product-card__price">$53.00</span>
                                <img src="./assets/icons/star.svg" alt="" class="product-card__star" />
                                <span class="product-card__score">3.4</span>
                            </div>
                        </article>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer -->
         <jsp:include page="templates/footer.jsp"></jsp:include>
    </body>
</html>
    