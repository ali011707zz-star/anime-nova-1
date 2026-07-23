.class public final Lcom/google/ads/interactivemedia/v3/internal/zzagn;
.super Lcom/google/ads/interactivemedia/v3/internal/zzago;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzagn;


# instance fields
.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzagn;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzago;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzagn;
    .locals 1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzagn;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzagn;->zzb:Ljava/lang/Object;

    return-object v0
.end method
