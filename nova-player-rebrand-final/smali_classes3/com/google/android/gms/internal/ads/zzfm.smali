.class final synthetic Lcom/google/android/gms/internal/ads/zzfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfo;

.field private final synthetic zzb:Ljava/lang/Runnable;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfo;Ljava/lang/Runnable;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzd:Z

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfm;->zzd:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzc(Ljava/lang/Runnable;ZZ)V

    return-void
.end method
