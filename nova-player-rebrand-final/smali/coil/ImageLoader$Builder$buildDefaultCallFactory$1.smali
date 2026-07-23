.class final Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/ImageLoader$Builder;->buildDefaultCallFactory()Lokhttp3/Call$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/ImageLoader$Builder;


# direct methods
.method constructor <init>(Lcoil/ImageLoader$Builder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;->this$0:Lcoil/ImageLoader$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;->invoke()Lokhttp3/Call$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/Call$Factory;
    .locals 2

    .line 537
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 538
    iget-object v1, p0, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;->this$0:Lcoil/ImageLoader$Builder;

    invoke-static {v1}, Lcoil/ImageLoader$Builder;->access$getApplicationContext$p(Lcoil/ImageLoader$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcoil/util/CoilUtils;->createDefaultCache(Landroid/content/Context;)Lokhttp3/Cache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "Builder()\n                .cache(CoilUtils.createDefaultCache(applicationContext))\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
