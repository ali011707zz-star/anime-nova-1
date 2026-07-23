.class final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PageTransformerAdapter.java"


# instance fields
.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0

    .line 0
    return-void
.end method
