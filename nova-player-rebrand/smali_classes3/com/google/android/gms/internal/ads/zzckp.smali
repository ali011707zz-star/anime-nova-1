.class final synthetic Lcom/google/android/gms/internal/ads/zzckp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzckr;

.field private final synthetic zzb:I

.field private final synthetic zzc:I

.field private final synthetic zzd:Z

.field private final synthetic zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckr;IIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zza:Lcom/google/android/gms/internal/ads/zzckr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zza:Lcom/google/android/gms/internal/ads/zzckr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzc:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzd:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzckp;->zze:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzckr;->zzu(IIZZ)V

    return-void
.end method
