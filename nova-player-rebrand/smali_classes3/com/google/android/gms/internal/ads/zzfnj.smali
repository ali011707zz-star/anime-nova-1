.class final synthetic Lcom/google/android/gms/internal/ads/zzfnj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnl;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfnb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnl;Lcom/google/android/gms/internal/ads/zzfnb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnj;->zza:Lcom/google/android/gms/internal/ads/zzfnl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnj;->zzb:Lcom/google/android/gms/internal/ads/zzfnb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnj;->zza:Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zzg()Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnj;->zzb:Lcom/google/android/gms/internal/ads/zzfnb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnn;->zzb(Lcom/google/android/gms/internal/ads/zzfnb;)V

    return-void
.end method
