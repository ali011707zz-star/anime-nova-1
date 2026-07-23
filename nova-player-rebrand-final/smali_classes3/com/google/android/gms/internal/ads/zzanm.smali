.class public final Lcom/google/android/gms/internal/ads/zzanm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzanl;

.field private zzd:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzc:Lcom/google/android/gms/internal/ads/zzanl;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzanl;->zza(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 7

    add-int/2addr p3, p2

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzanm;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 2
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzd:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    .line 3
    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzd:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzb:Lcom/google/android/gms/internal/ads/zzer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzd:Ljava/util/zip/Inflater;

    .line 4
    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzL(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzer;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result p1

    .line 5
    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->zzc:Lcom/google/android/gms/internal/ads/zzanl;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanl;->zzd()V

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lt p2, p3, :cond_3

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzt()I

    move-result p3

    if-eq p3, p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzanl;->zzb(Lcom/google/android/gms/internal/ads/zzer;)V

    .line 10
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzanl;->zzc(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    .line 8
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalx;

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v5, 0x4c4b40

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzalx;-><init>(Ljava/util/List;JJ)V

    .line 12
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    return-void
.end method
