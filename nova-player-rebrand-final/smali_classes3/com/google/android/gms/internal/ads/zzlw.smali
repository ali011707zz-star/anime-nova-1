.class final synthetic Lcom/google/android/gms/internal/ads/zzlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzlx;

.field private final synthetic zzb:Landroid/util/Pair;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwb;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzwg;

.field private final synthetic zze:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/util/Pair;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzb:Landroid/util/Pair;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzc:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzd:Lcom/google/android/gms/internal/ads/zzwg;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzlw;->zze:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzb:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmc;->zzj()Lcom/google/android/gms/internal/ads/zzmx;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzc:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzd:Lcom/google/android/gms/internal/ads/zzwg;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzlw;->zze:I

    .line 1
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzwv;->zzai(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V

    return-void
.end method
