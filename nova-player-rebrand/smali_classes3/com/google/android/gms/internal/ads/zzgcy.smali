.class final synthetic Lcom/google/android/gms/internal/ads/zzgcy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcy;->zza:Lcom/google/android/gms/internal/ads/zzgdb;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcy;->zza:Lcom/google/android/gms/internal/ads/zzgdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
