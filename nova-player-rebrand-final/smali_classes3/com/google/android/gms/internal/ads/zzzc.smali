.class final synthetic Lcom/google/android/gms/internal/ads/zzzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaa;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzzl;

.field private final synthetic zzc:Z

.field private final synthetic zzd:[I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzzl;Z[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzc;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzd:[I

    return-void
.end method


# virtual methods
.method public final synthetic zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzzf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzc;->zza:Lcom/google/android/gms/internal/ads/zzaaa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v7, v0, v4}, Lcom/google/android/gms/internal/ads/zzzf;-><init>(Lcom/google/android/gms/internal/ads/zzaaa;Lcom/google/android/gms/internal/ads/zzzl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzd:[I

    aget v8, v0, p1

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v9, Lcom/google/android/gms/internal/ads/zzguc;

    .line 3
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    .line 4
    :goto_0
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v3, v0, :cond_0

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzzc;->zzc:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyx;

    .line 5
    aget v5, p3, v3

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzl;IZLcom/google/android/gms/internal/ads/zzgrd;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    return-object p1
.end method
