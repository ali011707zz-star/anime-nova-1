.class final Lcom/google/android/gms/internal/ads/zzzi;
.super Lcom/google/android/gms/internal/ads/zzzs;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzl;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(ILcom/google/android/gms/internal/ads/zzbg;I)V

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzmn$-CC;->zzaa(IZ)Z

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzi;->zze:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzf:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzzi;->zzb(Lcom/google/android/gms/internal/ads/zzzi;)I

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zze:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzzi;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzf:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzzi;->zzf:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzzs;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzi;

    const/4 p1, 0x0

    return p1
.end method
