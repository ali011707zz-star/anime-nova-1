.class public final Lcom/google/ads/interactivemedia/v3/internal/zzbt;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzbu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzbu;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbu;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbt;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzbu;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbt;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzbu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzbu;->zzb(Landroid/content/Context;)V

    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbt;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbu;->zza()Z

    move-result v0

    return v0
.end method
