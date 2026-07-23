.class public final Lcom/google/ads/interactivemedia/v3/internal/zzve;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvc;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzve;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzve;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
