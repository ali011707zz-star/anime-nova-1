.class public abstract Lcoil/ImageViews;
.super Ljava/lang/Object;
.source "ImageViews.kt"


# direct methods
.method public static final clear(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcoil/util/CoilUtils;->clear(Landroid/view/View;)V

    return-void
.end method
