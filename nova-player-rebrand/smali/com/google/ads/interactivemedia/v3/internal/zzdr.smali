.class public final Lcom/google/ads/interactivemedia/v3/internal/zzdr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzdp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdh;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzdh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdh;->zze(Lorg/json/JSONObject;)V

    return-object v0
.end method
