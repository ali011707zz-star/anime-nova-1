.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzxz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzxz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxy;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxy;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzxz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxz;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract zza(Ljava/util/Date;)Ljava/util/Date;
.end method
