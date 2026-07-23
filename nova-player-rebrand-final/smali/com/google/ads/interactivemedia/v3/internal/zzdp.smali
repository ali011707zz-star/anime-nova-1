.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzdp;
.super Landroid/os/AsyncTask;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

.field protected final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdh;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdh;

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zza(Ljava/lang/String;)V

    return-void
.end method

.method protected zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzdq;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzdp;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzdq;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzdq;

    return-void
.end method
