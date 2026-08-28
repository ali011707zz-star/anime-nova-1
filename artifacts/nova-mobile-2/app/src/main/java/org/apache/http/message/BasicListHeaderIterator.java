package org.apache.http.message;

import java.util.List;
import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;

/* loaded from: classes2.dex */
public class BasicListHeaderIterator implements HeaderIterator {
    public final List allHeaders;
    public int currentIndex;
    public String headerName;
    public int lastIndex;

    public BasicListHeaderIterator(List list, String str) {
        if (list != null) {
            this.allHeaders = list;
            this.headerName = str;
            this.currentIndex = findNext(-1);
            this.lastIndex = -1;
            return;
        }
        throw new IllegalArgumentException("Header list must not be null.");
    }

    public boolean filterHeader(int i10) {
        if (this.headerName == null) {
            return true;
        }
        return this.headerName.equalsIgnoreCase(((Header) this.allHeaders.get(i10)).getName());
    }

    public int findNext(int i10) {
        if (i10 < -1) {
            return -1;
        }
        int size = this.allHeaders.size() - 1;
        boolean z10 = false;
        while (!z10 && i10 < size) {
            i10++;
            z10 = filterHeader(i10);
        }
        if (z10) {
            return i10;
        }
        return -1;
    }

    @Override // org.apache.http.HeaderIterator, java.util.Iterator
    public boolean hasNext() {
        return this.currentIndex >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() throws NoSuchElementException {
        return nextHeader();
    }

    @Override // org.apache.http.HeaderIterator
    public Header nextHeader() throws NoSuchElementException {
        int i10 = this.currentIndex;
        if (i10 >= 0) {
            this.lastIndex = i10;
            this.currentIndex = findNext(i10);
            return (Header) this.allHeaders.get(i10);
        }
        throw new NoSuchElementException("Iteration already finished.");
    }

    @Override // java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        int i10 = this.lastIndex;
        if (i10 >= 0) {
            this.allHeaders.remove(i10);
            this.lastIndex = -1;
            this.currentIndex--;
            return;
        }
        throw new IllegalStateException("No header to remove.");
    }
}
