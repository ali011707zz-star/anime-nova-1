.class final synthetic Lcom/google/android/gms/internal/ads/zzfhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcag;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcag;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zza:Lcom/google/android/gms/internal/ads/zzcag;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbc;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhb;->zza:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcag;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcag;->zzc()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzg(Lcom/google/android/gms/internal/ads/zzcaw;)V

    return-void
.end method
