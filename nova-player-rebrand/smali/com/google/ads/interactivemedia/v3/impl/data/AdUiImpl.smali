.class public Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/zza;


# instance fields
.field private final icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final router:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;->router:Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;->icons:Ljava/util/List;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;->sessionId:Ljava/lang/String;

    return-void
.end method
