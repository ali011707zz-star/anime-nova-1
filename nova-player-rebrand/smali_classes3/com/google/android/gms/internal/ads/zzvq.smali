.class final Lcom/google/android/gms/internal/ads/zzvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwv;
.implements Lcom/google/android/gms/internal/ads/zztk;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzvs;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/internal/ads/zzwu;

.field private zzd:Lcom/google/android/gms/internal/ads/zztj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zza:Lcom/google/android/gms/internal/ads/zzvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzvj;->zzf(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzvj;->zzh(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zztj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzd:Lcom/google/android/gms/internal/ads/zztj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private final zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->zza:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzb:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->zza:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zzw(Ljava/lang/Object;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzwu;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwu;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    .line 4
    invoke-static {v1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvj;->zzg(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzd:Lcom/google/android/gms/internal/ads/zztj;

    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/ads/zztj;->zza:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zztj;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    .line 6
    invoke-static {v1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvj;->zzi(ILcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zztj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzd:Lcom/google/android/gms/internal/ads/zztj;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->zza:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzb:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzwg;->zzc:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zzy(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzwk;)J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzwg;->zzd:J

    .line 2
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzvs;->zzy(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzwk;)J

    return-object p1
.end method


# virtual methods
.method public final zzai(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;

    .line 3
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzwu;->zzd(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;I)V

    :cond_0
    return-void
.end method

.method public final zzaj(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzwu;->zze(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V

    :cond_0
    return-void
.end method

.method public final zzak(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzwu;->zzf(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;)V

    :cond_0
    return-void
.end method

.method public final zzal(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;

    .line 3
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzwu;->zzg(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final zzam(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzf(ILcom/google/android/gms/internal/ads/zzwk;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvq;->zzc:Lcom/google/android/gms/internal/ads/zzwu;

    .line 2
    invoke-direct {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzvq;->zzg(Lcom/google/android/gms/internal/ads/zzwg;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwg;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzwu;->zzh(Lcom/google/android/gms/internal/ads/zzwg;)V

    :cond_0
    return-void
.end method
