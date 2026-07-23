.class final Lcom/google/android/gms/internal/ads/zzgyi$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgyi$zze;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/ads/zzgyi$zze;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyi$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyi$zze;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyi$zze;->zza:Lcom/google/android/gms/internal/ads/zzgyi$zze;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyi;->zzv(Lcom/google/android/gms/internal/ads/zzgyi$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
