.class final synthetic Lcom/google/android/gms/internal/ads/zzgqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqf;

.field private final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqf;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqd;->zzb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqf;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method
