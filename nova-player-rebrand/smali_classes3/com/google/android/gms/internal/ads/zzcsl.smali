.class final synthetic Lcom/google/android/gms/internal/ads/zzcsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zza:Lcom/google/android/gms/internal/ads/zzcsm;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsl;->zza:Lcom/google/android/gms/internal/ads/zzcsm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcsm;->zza:Lcom/google/android/gms/internal/ads/zzcsn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsn;->zzg()Lcom/google/android/gms/internal/ads/zzcss;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcss;->zzm()V

    return-void
.end method
