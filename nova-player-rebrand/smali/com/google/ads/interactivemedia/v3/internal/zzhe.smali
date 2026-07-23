.class final Lcom/google/ads/interactivemedia/v3/internal/zzhe;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzol;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzna;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzhg;Lcom/google/ads/interactivemedia/v3/internal/zzna;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhe;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzna;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhe;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzna;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzna;->zza(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
