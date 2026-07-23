.class public Lcom/facebook/ads/redexgen/X/1J;
.super Lcom/facebook/ads/redexgen/X/7M;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Yo;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 81
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4mrgyhu5NuMSfoRJ7wvth"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Meba3O6SWeMBrZzPyfP10SBJe7jX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YOQh7xYBrfW2123ECT3lDkRgUFpenV07"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JuO7BKBrPjkMVs4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1J;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 5182
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Landroid/content/Context;)V

    .line 5183
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1J;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 5184
    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 5191
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/hr;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/hr;-><init>(Landroid/content/Context;IZ)V

    .line 5192
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/hr;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 5193
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1T(Z)V

    .line 5194
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/7M;->setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V

    .line 5195
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Ft;
    .locals 4

    .line 5185
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 5186
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    const/4 v0, 0x0

    return-object v0

    .line 5187
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1J;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1J;->A00:[Ljava/lang/String;

    const-string v1, "XAsjP5XwQSgGjSaOGRXjEIyXW47w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;
    .locals 1

    .line 5188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1J;->getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;
    .locals 1

    .line 5189
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/7M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hr;

    return-object v0
.end method

.method public getOnScrollListener()Lcom/facebook/ads/redexgen/X/R7;
    .locals 1

    .line 5190
    new-instance v0, Lcom/facebook/ads/redexgen/X/PY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PY;-><init>(Lcom/facebook/ads/redexgen/X/1J;)V

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 0

    .line 5196
    return-void
.end method
