.class public final Lcom/google/android/gms/internal/ads/zzdui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdui;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdui;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdui;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdui;-><init>(Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaw;->zza()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzp:Lcom/google/android/gms/internal/ads/zzfiy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "rewarded_interstitial"

    return-object v0

    .line 3
    :cond_0
    const-string v0, "rewarded"

    return-object v0
.end method
