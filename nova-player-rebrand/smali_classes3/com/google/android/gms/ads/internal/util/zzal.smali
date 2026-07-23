.class final synthetic Lcom/google/android/gms/ads/internal/util/zzal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzat;

.field private final synthetic zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic zzc:I

.field private final synthetic zzd:I

.field private final synthetic zze:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzat;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzc:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzd:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zze:I

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzc:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zzd:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/zzal;->zze:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/util/zzat;->zzi(Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method
