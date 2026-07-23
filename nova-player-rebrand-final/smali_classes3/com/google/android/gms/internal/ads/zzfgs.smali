.class final synthetic Lcom/google/android/gms/internal/ads/zzfgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zza:Lcom/google/android/gms/internal/ads/zzfgt;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgs;->zza:Lcom/google/android/gms/internal/ads/zzfgt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgt;->zze:Lcom/google/android/gms/internal/ads/zzfgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgv;->zzf()Lcom/google/android/gms/internal/ads/zzerp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzerp;->zzg()V

    return-void
.end method
