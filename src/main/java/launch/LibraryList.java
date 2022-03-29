package launch;

import java.util.ArrayList;

public class LibraryList {
        private ArrayList<Book> list;

    public LibraryList() {
        list=new ArrayList();
    }
     
     public LibraryList(ArrayList<Book> list) {
        this.list = list;
    }

    public ArrayList<Book> getList() {
        return list;
    }

    public void setList(ArrayList<Book> list) {
        this.list = list;
    }

    public void add(Book l){
        list.add(l);
    }
    public int getAt(Book l){
        return list.indexOf(l);
    }
    public Book get(int index){
              return list.get(index);
    }
    public boolean remove(Book l){
        return list.remove(l);
    }
    
    public Book set(int index, Book r){
        return list.set(index, r);
    }
    @Override
    public String toString() {
        return "RecordList{" + "list=" + list + '}';
    }
        
}
