.class public final Lcom/player/easy/player/AsvDataSourceFactory;
.super Ljava/lang/Object;
.source "AsvDataSourceFactory.kt"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/player/easy/player/AsvDataSourceFactory;",
        "Landroidx/media3/datasource/DataSource$Factory;",
        "upstreamFactory",
        "<init>",
        "(Landroidx/media3/datasource/DataSource$Factory;)V",
        "createDataSource",
        "Landroidx/media3/datasource/DataSource;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    const-string v0, "upstreamFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/player/easy/player/AsvDataSourceFactory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/player/easy/player/AsvDataSourceFactory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    const-string v1, "createDataSource(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/player/easy/player/AsvDataSource;

    invoke-direct {v1, v0}, Lcom/player/easy/player/AsvDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    return-object v1
.end method
