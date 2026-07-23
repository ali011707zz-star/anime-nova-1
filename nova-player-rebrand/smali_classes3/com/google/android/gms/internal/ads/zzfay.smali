.class final synthetic Lcom/google/android/gms/internal/ads/zzfay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfba;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfax;

.field private final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfba;JLcom/google/android/gms/internal/ads/zzfax;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzfba;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfay;->zza:Lcom/google/android/gms/internal/ads/zzfba;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzc:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfay;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfba;->zzb(JLcom/google/android/gms/internal/ads/zzfax;Landroid/os/Bundle;)V

    return-void
.end method
