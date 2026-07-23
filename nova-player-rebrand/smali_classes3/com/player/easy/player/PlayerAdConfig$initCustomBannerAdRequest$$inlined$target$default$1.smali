.class public final Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;
.super Ljava/lang/Object;
.source "ImageRequest.kt"

# interfaces
.implements Lcoil/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/player/PlayerAdConfig;->initCustomBannerAdRequest(Lcom/player/easy/data/CustomAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "com/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1",
        "Lcoil/target/Target;",
        "Landroid/graphics/drawable/Drawable;",
        "placeholder",
        "",
        "onStart",
        "(Landroid/graphics/drawable/Drawable;)V",
        "error",
        "onError",
        "result",
        "onSuccess",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$4\n+ 2 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$1\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$2\n+ 4 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,920:1\n766#2:921\n767#3:922\n249#4,2:923\n251#4,2:927\n257#5,2:925\n*S KotlinDebug\n*F\n+ 1 PlayerAdConfig.kt\ncom/player/easy/player/PlayerAdConfig\n*L\n250#1:925,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $customBannerView$inlined:Lcom/player/easy/widget/BannerView;

.field final synthetic this$0:Lcom/player/easy/player/PlayerAdConfig;


# direct methods
.method public constructor <init>(Lcom/player/easy/widget/BannerView;Lcom/player/easy/player/PlayerAdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;->$customBannerView$inlined:Lcom/player/easy/widget/BannerView;

    iput-object p2, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;->$customBannerView$inlined:Lcom/player/easy/widget/BannerView;

    invoke-virtual {v0}, Lcom/player/easy/widget/BannerView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    invoke-static {p1}, Lcom/player/easy/player/PlayerAdConfig;->access$getPlaceHolder$p(Lcom/player/easy/player/PlayerAdConfig;)Landroid/view/ViewGroup;

    move-result-object p1

    const-string v0, "access$getPlaceHolder$p(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 925
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object p1, p0, Lcom/player/easy/player/PlayerAdConfig$initCustomBannerAdRequest$$inlined$target$default$1;->this$0:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/player/easy/player/PlayerAdConfig;->access$setAdLoaded$p(Lcom/player/easy/player/PlayerAdConfig;Z)V

    return-void
.end method
