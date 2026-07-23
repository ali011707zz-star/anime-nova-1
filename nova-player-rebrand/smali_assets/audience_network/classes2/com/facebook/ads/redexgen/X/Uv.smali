.class public final Lcom/facebook/ads/redexgen/X/Uv;
.super Lcom/facebook/ads/redexgen/X/fo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UK;->A0g(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ju;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/UK;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1943
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hBf0w5eWi1Spl1ubHLZPwgySyKwDkFls"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R1QfRDzVW3llag6pkWHTLJyFxLfuZYUb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hIMvI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VChjXPEjBKz9WEtkkyfZeEDOAtDm6pyS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZAoFS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FLKekHrPvHjWwOMiUj748H2wUl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "P5m22x1ZKo3VUkYY2cMyPktUJxi7JgjH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nk3fSWmW4cxCKGmv1zm92qMESviF4Rnt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/ju;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 68886
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 68887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A06()V

    .line 68888
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 68889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A0A()V

    .line 68890
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 68891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A0B()V

    .line 68892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    .line 68893
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 68894
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_0

    .line 68896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 68897
    .local v0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/eq;

    if-eqz v0, :cond_0

    .line 68898
    check-cast v1, Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/eq;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0V(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0T()V

    .line 68900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A08()V

    .line 68901
    return-void

    .line 68902
    .end local v0    # "videoView":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:Z

    if-eqz v0, :cond_1

    .line 68903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uv;->A00:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 68904
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A06(Lcom/facebook/ads/redexgen/X/UK;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68905
    .local v1, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 68906
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/UK;->A0f(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 68907
    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0I(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A01:Lcom/facebook/ads/redexgen/X/ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A0C(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 68908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0V(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0V(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 68910
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Y(Lcom/facebook/ads/redexgen/X/UK;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Y(Lcom/facebook/ads/redexgen/X/UK;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Y(Lcom/facebook/ads/redexgen/X/UK;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fo;->A03()V

    .line 68912
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0S(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y2;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 68913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0l(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 68914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A08(Lcom/facebook/ads/redexgen/X/UK;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A09(Lcom/facebook/ads/redexgen/X/UK;)Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uv;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uv;->A04:[Ljava/lang/String;

    const-string v1, "XqswFkrS2Yg5WXkyCZy0rAQHDfEy407U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "6zRr91flYJNmh2JhyLNuVxqP1ZintOSM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 68915
    :cond_4
    return-void

    .line 68916
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A08(Lcom/facebook/ads/redexgen/X/UK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0A(Landroid/view/View;)V

    .line 68917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A09(Lcom/facebook/ads/redexgen/X/UK;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A09(Landroid/view/View;)V

    .line 68918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0P(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Ve;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0E(Lcom/facebook/ads/redexgen/X/Ve;)V

    .line 68919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0s(Lcom/facebook/ads/redexgen/X/UK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0I(Z)V

    .line 68920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0t(Lcom/facebook/ads/redexgen/X/UK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0M(Z)V

    .line 68921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0u(Lcom/facebook/ads/redexgen/X/UK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0L(Z)V

    .line 68922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0v(Lcom/facebook/ads/redexgen/X/UK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0J(Z)V

    .line 68923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0D(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0C(Lcom/facebook/ads/redexgen/X/NE;)V

    .line 68924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0w(Lcom/facebook/ads/redexgen/X/UK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0K(Z)V

    .line 68925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    .line 68926
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0B(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ze;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    .line 68927
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0D(Lcom/facebook/ads/redexgen/X/NF;)V

    .line 68928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0X(Lcom/facebook/ads/redexgen/X/UK;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0F(Ljava/lang/String;)V

    .line 68929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0N(Z)V

    .line 68930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0B(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0B(Lcom/facebook/ads/NativeAdLayout;)V

    .line 68931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Z(Lcom/facebook/ads/redexgen/X/UK;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;->A0G(Ljava/lang/ref/WeakReference;)V

    .line 68932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0E(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N3;->A03()V

    goto :goto_0

    .line 68933
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68934
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A04()V

    .line 68935
    :goto_0
    return-void

    .line 68936
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0V(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0T()V

    .line 68937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uv;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0Q(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A07()V

    .line 68938
    return-void
.end method
