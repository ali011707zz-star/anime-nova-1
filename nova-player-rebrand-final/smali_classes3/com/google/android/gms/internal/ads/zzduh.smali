.class public final Lcom/google/android/gms/internal/ads/zzduh;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzduh;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzduh;-><init>(Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduh;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdaw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaw;->zza()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzp:Lcom/google/android/gms/internal/ads/zzfiy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zzl:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zza$zza;

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziko;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
