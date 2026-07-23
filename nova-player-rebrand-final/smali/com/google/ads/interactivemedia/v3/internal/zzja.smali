.class final Lcom/google/ads/interactivemedia/v3/internal/zzja;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzja;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzja;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zzd()V

    return-void
.end method
